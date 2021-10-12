stackline = require "stackline"

local StacklineConfig = {
  appearance = {
    -- color = {red = 0.11, green = 0.13, blue = 0.07},
    -- color = {red = 0.4, green = 0.4, blue = 0.4},
    color = {red = 0.92, green = 0.86, blue = 0.70},
    alpha = 0.8,
    dimmer = 3,
    iconDimmer = 1.5,
    showIcons = true,
    size = 22,
    radius = 8,
    iconPadding = 0,
    pillThinness = 6,
    vertSpacing = 1.2,
    offset = {
      x = 2,
      y = 0
    },
    shouldFade = true,
    fadeDuration = 0.1
  },
}

stackline:init(StacklineConfig)
