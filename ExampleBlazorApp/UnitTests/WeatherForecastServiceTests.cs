using ExampleBlazorApp.Data;

namespace UnitTests
{
    public class WeatherForecastServiceTests
    {
        [Fact]
        public async Task GetForecastAsync_ReturnsFiveRandomForecasts()
        {
            // Arrange
            var service = new WeatherForecastService();

            // Act
            var forecasts = await service.GetForecastAsync(new DateOnly(2023,01,01));

            // Assert
            Assert.Equal(5, forecasts.Length);
        }
    }
}