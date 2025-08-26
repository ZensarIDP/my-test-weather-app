const request = require('supertest');
const app = require('./index');

describe('Weather GUI App', () => {
  let server;

  beforeAll((done) => {
    // Start server on a test port
    server = app.listen(0, () => {
      done();
    });
  });

  afterAll((done) => {
    // Close server after tests
    server.close(done);
  });

  test('GET /health should return health status', async () => {
    const response = await request(app).get('/health');
    expect(response.status).toBe(200);
    expect(response.body.status).toBe('healthy');
    expect(response.body.service).toBe('Weather GUI App');
  });

  test('GET / should return the main page', async () => {
    const response = await request(app).get('/');
    expect(response.status).toBe(200);
    expect(response.headers['content-type']).toMatch(/html/);
  });

  test('GET /api/weather/London should handle weather requests', async () => {
    const response = await request(app).get('/api/weather/London');
    
    if (process.env.OPENWEATHER_API_KEY && process.env.OPENWEATHER_API_KEY !== 'your_api_key_here') {
      // If API key is properly set, expect weather data
      expect(response.status).toBe(200);
      expect(response.body).toHaveProperty('city');
      expect(response.body).toHaveProperty('temperature');
    } else {
      // If no API key, expect error message
      expect(response.status).toBe(500);
      expect(response.body.error).toBe('API key not configured');
    }
  });

  test('GET /api/weather/InvalidCity should return 404 (if API key is set)', async () => {
    if (process.env.OPENWEATHER_API_KEY && process.env.OPENWEATHER_API_KEY !== 'your_api_key_here') {
      const response = await request(app).get('/api/weather/InvalidCityNameThatDoesNotExist12345');
      expect(response.status).toBe(404);
      expect(response.body.error).toBe('City not found');
    } else {
      // Skip this test if no API key
      expect(true).toBe(true);
    }
  });

  test('GET /nonexistent should return 404', async () => {
    const response = await request(app).get('/nonexistent');
    expect(response.status).toBe(404);
    expect(response.text).toMatch(/<!DOCTYPE html>/); // Should return 404 HTML page
  });
});
