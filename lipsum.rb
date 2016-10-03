require 'erb'

lipsum_wanted = ARGV[0].downcase

paragraphs_needed = ARGV[1].to_i

puts paragraphs_needed.inspect

classic = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sagittis dignissim mattis. Donec et efficitur diam, eget posuere nulla. Sed molestie non felis ac mattis. Duis hendrerit nisi sed fermentum tincidunt. Morbi eu pharetra nibh. Cras vestibulum dolor non ullamcorper luctus. Curabitur aliquet vehicula nibh, nec lobortis lorem. Vivamus sit amet lacus lacinia, facilisis lorem nec, molestie lacus. Nulla vel est aliquet, viverra lacus et, porttitor est. Quisque gravida tempor laoreet. Vivamus luctus iaculis felis, in pharetra odio congue venenatis. Suspendisse feugiat congue metus, vel accumsan quam convallis sit amet. Nulla facilisi. Ut at convallis felis. Pellentesque fermentum, sem vitae mattis fringilla, erat nibh consequat enim, id semper ex leo vel ipsum."

hipsum = " Normcore seitan woke kinfolk hella fam. Viral shabby chic pork belly 3 wolf moon semiotics brooklyn. Chicharrones kinfolk blue bottle hella jean shorts brooklyn, tumeric +1 8-bit seitan crucifix meditation scenester you probably haven't heard of them hammock. Bushwick flannel yuccie cold-pressed, disrupt shabby chic yr humblebrag pitchfork put a bird on it lumbersexual irony banjo. Sriracha skateboard beard blog DIY. Yuccie marfa intelligentsia kogi tilde hammock. Edison bulb post-ironic tumblr food truck."

fillerama = " Bender, quit destroying the universe! Aww, it's true. I've been hiding it for so long. Why am I sticky and naked? Did I miss something fun? Ven ve voke up, ve had zese wodies. If rubbin' frozen dirt in your crotch is wrong, hey I don't wanna be right.  Bender, you risked your life to save me! I just want to talk. It has nothing to do with mating. Fry, that doesn't make sense. What are you hacking off? Is it my torso?! 'It is!' My precious torso! Are you crazy? I can't swallow that."



if lipsum_wanted == "classic"
  output = classic

  elsif lipsum_wanted == "hipsum"
    output = hipsum

  elsif lipsum_wanted == "fillerama"
    output = fillerama

  else
    puts "Please choose classic , hipsum, or fillerama"
end





new_file = File.open("./#{lipsum_wanted}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
