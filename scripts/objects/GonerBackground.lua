local GonerBackground, super = Class(Object)

function GonerBackground:init(x, y, song, song_pitch_gradually_increases)
    song = song or "AUDIO_ANOTHERHIM"
    if song_pitch_gradually_increases == nil then
        song_pitch_gradually_increases = true
    end

    super.init(self, x or SCREEN_WIDTH/2, y or SCREEN_HEIGHT/2, 320, 240)
    self:setScale(2)
    self:setOrigin(0, 0)

    self.parallax_x = 0
    self.parallax_y = 0

    self.piece_depth = 0

    self.timer = Timer()
    self.timer:every(40/30, function()
        self.piece_depth = self.piece_depth - 0.001
        local piece = self:addChild(GonerBackgroundPiece())
        piece.stretch_speed = 0.005
        piece.layer = self.piece_depth
    end)
    self:addChild(self.timer)

    self.music_pitch = 0.02
    self.music_target_pitch = song == "AUDIO_ANOTHERHIM" and 0.8 or 1
    if not song_pitch_gradually_increases then
        self.music_pitch = 1
        self.music_target_pitch = 1
    end
    self.music = Music(song, 1, self.music_pitch)
end

function GonerBackground:onRemove(...)
    super.onRemove(self, ...)

    self.music:stop()
end

function GonerBackground:update()
    self.music_pitch = Utils.approach(self.music_pitch, 1, 0.02 * DTMULT)
    self.music:setPitch(self.music_pitch)

    super.update(self)
end

return GonerBackground