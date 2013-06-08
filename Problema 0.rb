class MultiOf
    def initialize()
        @a=0
        @b=0
        @max=0
        @sum=0
    end
    def InputScan
        puts "Hi, Please enter two numbers to find the sum of their multiples"
        puts "Ok, lets begin! Enter the first number."
        @a = gets
        puts "Right! now another one."
        @b = gets
        puts "Everything seems fine! Now enter the maximum value."
        @max = gets
    end
    def calculate
        (1..(Integer(@max))-1).each do |i|
            if i % Integer(@a) == 0
                @sum = @sum + i
            elsif i % Integer(@b) == 0
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

multi = MultiOf.new()
#Para inserir manualmente o valor a calcular
#multi.manualSet(3,5,1000000000)
#Para pedir os valor que se quer na linha de comandos
multi.InputScan
multi.calculate
multi.respond


