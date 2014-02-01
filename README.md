ECE281_CE2 - C3C Pluger
==========

###Structural Screenshot
Below is a screenshot of the testbench waveform created from running my Structural testbench of the Decoder module.
![Schematic Waveform](https://github.com/JasonPluger/ECE281_CE2/blob/master/Decoder_Structural_waveform.JPG "Schematic")

###Behavioral Screenshot
Below is a screenshot of the testbench waveform created from running my Behavioral testbench of the Decoder module.
![Behavioral Waveform](https://github.com/JasonPluger/ECE281_CE2/blob/master/Decoder_Behavioral_waveform.JPG "Behavioral")


###Analysis
I compared my structural decoder waveform to the truthtable I created using the structural diagram found in the CE2 Word document. For each input, the outputs of my truth table matched those of my structural decoder waveform. Similarly, my behavioral waveform matched exactly my structural waveform. By comparing my truth table to my structural waveform, and my behavioral waveform to my structural waveform and determining that they all matched, I concluded that my output was indeed correct for both waveforms.

####What is a Decoder?
A decoder is a device that uses simple logic gates to calculate the minterm of a set of inputs. In a given decoder, for N inputs there will be 2^N outputs, and only one of the outputs will ever evaluate to true - the term associated with that output is the minterm for the given inputs inputs.
