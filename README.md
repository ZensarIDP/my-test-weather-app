# Weather GUI App

A beautiful, responsive weather dashboard application built with Node.js, Express, and vanilla JavaScript. Features real-time weather data, 5-day forecasts, and a stunning visual interface.

## 🌟 Features

- **Real-time Weather Data**: Current weather conditions for any city
- **5-Day Forecast**: Extended weather forecast with detailed information
- **Responsive Design**: Works perfectly on desktop, tablet, and mobile
- **Beautiful UI**: Gradient backgrounds, smooth animations, and modern design
- **Search Functionality**: Easy city search with real-time results
- **Weather Cards**: Visual representation of weather conditions
- **Error Handling**: Graceful error handling and user feedback

## 🚀 Quick Start

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- OpenWeatherMap API key

### Installation

1. Clone or download this project
2. Navigate to the project directory:
   ```bash
   cd weather-gui-app
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Get your free API key from [OpenWeatherMap](https://openweathermap.org/api)

5. Create a `.env` file and add your API key:
   ```env
   OPENWEATHER_API_KEY=your_actual_api_key_here
   PORT=3000
   ```

6. Start the application:
   ```bash
   npm start
   ```

7. Open your browser and visit: `http://localhost:3000`

## 🔧 Development

For development with auto-reload:
```bash
npm run dev
```

## 🏗️ Project Structure

```
weather-gui-app/
├── index.js              # Express server
├── package.json          # Dependencies and scripts
├── .env                  # Environment variables
├── README.md             # This file
└── public/               # Frontend files
    ├── index.html        # Main HTML page
    ├── css/
    │   └── style.css     # Styles and animations
    └── js/
        └── script.js     # Frontend JavaScript
```

## 🌐 API Endpoints

- `GET /` - Serves the main dashboard
- `GET /api/weather/:city` - Get current weather for a city
- `GET /api/forecast/:city` - Get 5-day forecast for a city

## 🎨 UI Features

- **Gradient Background**: Beautiful animated gradients
- **Weather Cards**: Clean, modern weather information display
- **Search Interface**: Intuitive city search functionality
- **Forecast Grid**: 5-day forecast with weather icons
- **Responsive Layout**: Mobile-first design approach
- **Loading States**: Smooth loading animations
- **Error Messages**: User-friendly error handling

## 🌍 Weather Data

This app uses the OpenWeatherMap API to provide:
- Current weather conditions
- Temperature, humidity, wind speed
- Weather descriptions and icons
- 5-day/3-hour forecast data
- Real-time updates

## 📱 Mobile Ready

The application is fully responsive and optimized for:
- Desktop computers
- Tablets
- Mobile phones
- Various screen sizes

## 🛠️ Technologies Used

- **Backend**: Node.js, Express.js
- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **API**: OpenWeatherMap API
- **Icons**: FontAwesome
- **Fonts**: Google Fonts (Poppins)

## 🔐 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `OPENWEATHER_API_KEY` | Your OpenWeatherMap API key | Required |
| `PORT` | Server port | 3000 |
| `NODE_ENV` | Environment mode | development |

## 🤝 Contributing

1. Fork the project
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 🌟 Screenshots

*Coming soon - Take screenshots after running the app!*

---

**Enjoy your beautiful weather dashboard! 🌤️**
