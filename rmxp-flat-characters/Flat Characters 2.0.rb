#==============================================================================
# ** Flat Characters 2.0
#------------------------------------------------------------------------------
#  By Siegfried (http://saleth.fr)
#------------------------------------------------------------------------------
#  Makes a tall character "stick" to the floor (savepoints, teleporters, etc.).
#  Add "_flat" to the file name to apply it (the tag can be changed).
#==============================================================================

#==============================================================================
# ** Sprite_Character
#==============================================================================

class Sprite_Character < RPG::Sprite
  #--------------------------------------------------------------------------
  # * Invariables
  #--------------------------------------------------------------------------
  FLAT_TAG = "_flat"                      # tag used in the filename
  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  alias flat_update update
  def update
    flat_update
    self.z = 0 if @character_name.include?(FLAT_TAG)
  end
end