####################################################################
#[Problema 0]                                                      #
#If we list all the natural numbers below 10 that are multiples of #
#3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.   #
#                                                                  #
#Find the sum of all the multiples of 3 or 5 below 1000.           #
####################################################################

class MultiOf
    def initialize()
        @num1=0
        @num2=0
        @max=0
        @sum=0
    end
    def InputScan
        puts "Hi, Please enter two numbers to find the sum of their multiples"
        puts "Ok, lets begin! Enter the first number."
        @num1 = gets
        puts "Right! now another one."
        @num2 = gets
        puts "Everything seems fine! Now enter the maximum value."
        @max = gets
    end
    def calculate
        limit = Integer(@max))-1
        (1..limit).each do |i|
            if i % Integer(@num1) == 0
                @sum = @sum + i
            elsif i % Integer(@num2) == 0
                @sum = @sum + i
            end
        end
    end
    def respond
        print "The sum of all multiples till #{@max} \t is \t#{@sum} \n"
        @sum = 0
    end
    def manualSet(a,b,max)
        @a=a
        @b=b
        @max=max
    end
end



#Instanciate a MultiOf class
multi = MultiOf.new()

#Manual value insertion
#multi.manualSet(3,5,1000000000)

#Values asked from promt
multi.InputScan

multi.calculate
multi.respond


