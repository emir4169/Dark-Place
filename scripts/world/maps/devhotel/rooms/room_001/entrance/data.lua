return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 15,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 6,
  nextobjectid = 17,
  properties = {
    ["music"] = "greenroom"
  },
  tilesets = {
    {
      name = "devroom",
      firstgid = 1,
      filename = "../../../../../tilesets/devroom.tsx",
      exportfilename = "../../../../../tilesets/devroom.lua"
    },
    {
      name = "devroom-objects",
      firstgid = 73,
      filename = "../../../../../tilesets/devroom-objects.tsx",
      exportfilename = "../../../../../tilesets/devroom-objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 15,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        9, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        9, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        9, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 8,
        6, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 8,
        2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        14, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8,
        8, 13, 14, 14, 14, 14, 8, 8, 8, 14, 14, 14, 14, 15, 8,
        8, 8, 8, 8, 8, 8, 7, 8, 9, 8, 8, 8, 8, 8, 8
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 15,
      id = 3,
      name = "decals",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 37, 38, 39, 39, 39, 40, 41, 0, 0, 0, 0,
        0, 0, 0, 0, 43, 44, 45, 45, 45, 46, 47, 0, 0, 0, 0,
        0, 0, 0, 0, 49, 50, 0, 0, 0, 52, 53, 0, 0, 0, 0,
        0, 0, 0, 0, 55, 56, 57, 57, 57, 58, 59, 0, 0, 0, 0,
        0, 0, 0, 0, 61, 62, 63, 63, 63, 64, 65, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 80,
          width = 520,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 120,
          width = 40,
          height = 440,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 560,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 560,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 260,
          y = 160,
          width = 80,
          height = 80,
          rotation = 0,
          gid = 121,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 265,
          y = 120,
          width = 70,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* It's a TV.",
            ["text2"] = "* It doesn't seem to be working though..."
          }
        },
        {
          id = 11,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = -40,
          y = 160,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Bedroom currently under renovations."
          }
        },
        {
          id = 12,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 600,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "devhotel/devhotel1",
            ["marker"] = "door_001"
          }
        },
        {
          id = 13,
          name = "",
          class = "",
          shape = "rectangle",
          x = 250,
          y = 460,
          width = 100,
          height = 70,
          rotation = 0,
          gid = 93,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "chest",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 480,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["item"] = "crescentpin"
          }
        },
        {
          id = 15,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 520,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 115,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 480,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* NOTE: This chest is only here as a placeholder.",
            ["text2"] = "* It will be removed once the quest for the item in it has been made."
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 10,
          name = "spawn",
          class = "",
          shape = "point",
          x = 300,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
