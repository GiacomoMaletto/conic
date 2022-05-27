local V, M = unpack(require "vector")

-- game data
local g = {}

local function determinant(p)
    local A = {
        {p[1],   p[2]/2, p[4]/2},
        {p[2]/2, p[3],   p[5]/2},
        {p[4]/2, p[5]/2, p[6]  }
    }
    return M.det(A)
end

local function discriminant(p)
    local A = {
        {p[1],   p[2]/2},
        {p[2]/2, p[3]  }
    }
    return M.det(A)
end

function love.load(args)
    love.math.setRandomSeed(love.timer.getTime())
    
    g.params = {}
    for i = 1, 6 do g.params[i] = love.math.random()*2-1 end
end

function love.update(dt)
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end