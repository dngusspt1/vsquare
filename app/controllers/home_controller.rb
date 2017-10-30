class HomeController < ApplicationController
  before_action :authenticate, only: [:choice, :select, :random]
  
  def index
    
  end
  
  def choice
    @show = Store.all
  end
  def choice2
    @show = Store.all
  end
  def one
    @show = Store.all
    @abc = Find.all
    
  end
  def two
    @show = Store.all
    @abc = Find.all
  end
  def four
    @show = Store.all
    @abc = Find.all
  end
  def five
    @show = Store.all
    @abc = Find.all
  end
  def six
    @show = Store.all
    @abc = Find.all
  end
  def seven
    @show = Store.all
    @abc = Find.all
  end
  def eight
    @show = Store.all
    @abc = Find.all
  end
  def nine
    @show = Store.all
    @abc = Find.all
  end
  def first
    @show = Store.all
    @abc = Find.all
  end
  def second
    @show = Store.all
    @abc = Find.all
  end
  def third
    @show = Store.all
    @abc = Find.all
  end
  def fourth
    @show = Store.all
    @abc = Find.all
  end
  def fifth
    @show = Store.all
    @abc = Find.all
  end
  def sixth
    @show = Store.all
    @abc = Find.all
  end
  def seventh
    @show = Store.all
    @abc = Find.all
  end
  def eighth
    @show = Store.all
    @abc = Find.all
  end
  def ninth
    @show = Store.all
    @abc = Find.all
  end
  
  def random
    
  end

end
