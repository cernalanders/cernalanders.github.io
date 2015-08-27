      class Dog
        @@best = "My dog is the best in the world!"
        @@puppy = nil
        def initialize(breed, name, age)
          @breed = breed
          @name = name
          @age = age
        end
        def check_puppy
          if @age < 2
            @@puppy = "#{@name} is just a puppy!"
            p @@puppy
          end
        end
        def call
          p "#{@name}, come here doggy!"
        end
        def introduce
          p "This is #{@name}, my #{@breed}. #{@@best}"
          check_puppy
        end
        def self.puppy
          @@puppy
        end
      end

      ripley = Dog.new("beagle", "Ripley", 1)

      ripley.introduce
      ripley.call