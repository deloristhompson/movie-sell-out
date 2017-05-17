class Theater
  attr_accessor :seats, :patrons
  def initialize(seats = 40, patrons = 0)
    @seats = seats
    @patrons = patrons
  end

  def admit!(admitted_patrons = 1)
      if admitted_patrons + @patrons > @seats
         "Patrons to exceed capactiy!!\n Do not admit!!!"
      else
        admitted_patrons += @patrons
    end
  end

  def at_capacity?
    @patrons == @seats
  end

  def record_walk_outs!(walk_outs = nil)
    if @walk_outs = nil?
      walk_outs = 0
    else
      @patrons -= walk_outs
    end
  end
  # Example from the lesson: functionally equavalent
 #  def record_walk_outs!(patrons = 1)
 #   @patrons -= patrons
 # end

  def to_s
    @patrons
  end
end
