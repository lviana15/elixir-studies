defmodule Rules do
  def eat_ghost?(power_pellet, ghost) do
    if (power_pellet == true) and (ghost == true) do
      true
    else
      false
    end
  end

  def score?(power_pellet, dot) do
    if power_pellet or dot do
      true
    else
      false
    end
  end

  def lose?(power_pellet, ghost) do
    if power_pellet == false and ghost == true do
      true
    else
      false
    end
  end

  def win?(all_dots, power_pellet, ghost) do
    if  all_dots and not lose?(power_pellet, ghost) do
      true
    else
      false
    end
  end
end
