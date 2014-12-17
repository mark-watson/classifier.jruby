start = Time.now

load "./classifier.rb"

lsi = Classifier::LSI.new

puts "\n***** test LSI classifier:"
lsi.add_item "good job on the wood stove with no burns or other accidents", :pos
lsi.add_item "hate that crap but what the hell I know how it goes so do not worry about it", :neg
lsi.add_item "it was bad news, the economy got worse", :neg
lsi.add_item "great food last night", :pos
lsi.add_item "she was happy with the good recipe", :pos

p lsi.classify "good dog for obeying"
p lsi.classify "the weather is worse than yesterday"

puts "\n***** test LSI summarizer:"

s = "Plunging European stocks, wobbly bonds and grave concerns about the health of Portuguese lender Banco Espirito Santo SA made last week feel like a rerun of the euro crisis. Most investors say it was no more than a blip for a resurgent region. Banco Espirito Santo has been in investors' sights since December. The Wall Street Journal first reported on accounting irregularities at the complex firm. Nerves frayed on Thursday when Banco Espirito Santo's parent company said it wouldn't be able to meet some short-term debt obligations."

puts s.summary(4)
puts ""
puts s.summary(2)


puts "\n***** test Bayes classifier:"

b = Classifier::Bayes.new 'Interesting', 'Uninteresting'
b.train_interesting "here are some good words. I hope you love them"
b.train_uninteresting "here are some bad words, I hate you"
p b.classify "I hate bad words and you" # returns 'Uninteresting'


stop = Time.now

puts "Time in milliseconds: #{stop - start}"
