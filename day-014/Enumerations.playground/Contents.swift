// Created by Ziady Mubaraq on 30/12/2023

import UIKit

func getHaterStatus(weather: String) -> String? {
  if weather == "sunny" {
    return nil
  } else {
    return "Hate"
  }
}

enum WeatherType {
  case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
  if weather == WeatherType.sun {
    return nil
  } else {
    return "Hate"
  }
}

getHaterStatus(weather: WeatherType.cloud)

enum WeatherType {
  case sun
  case cloud
  case rain
  case wind
  case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
  if weather == .sun {
    return nil
  } else {
    return "Hate"
  }
}

getHaterStatus(weather: .cloud)

func getHaterStatus(weather: WeatherType) -> String? {
  switch weather {
  case .sun:
    return nil
  case .cloud, .wind:
    return "dislike"
  case .rain:
    return "hate"
  }
}

// MARK: Enums with additional values
enum WeatherType {
  case sun
  case cloud
  case rain
  case wind(speed: Int)
  case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
  switch weather {
  case .sun:
    return nil
  case .wind(let speed) where speed < 10:
    return "meh"
  case .cloud, .wind:
    return "dislike"
  case .rain, .snow:
    return "hate"
  }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))
