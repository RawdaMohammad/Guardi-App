// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/NaturalDisaster/instructionText.dart';

class Volcano extends StatelessWidget {
  const Volcano({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          title: Text(
            'Volcano',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InstructionText(
                  title:
                      'If a lahar, pyroclastic flow, or lava flow is headed toward you:',
                  instructions: [
                    '- Leave the area immediately. If you are warned to evacuate because an eruption is imminent, evacuate.',
                    '- If you can drive rather than walk, use your vehicle to evacuate. When driving keep doors and windows closed, drive across the path of danger if you can or away from the danger if you can not, and watch for unusual hazards in the road.',
                  ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'If you are indoors:',
                  instructions: [
                    '- Close all windows, doors, and fireplace or woodstove dampers.',
                    '- Turn off all fans and heating and air conditioning systems.',
                    '- Bring pets and livestock into closed shelters.',
                  ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'If you are outdoors:',
                  instructions: [
                    'Seek shelter indoors.',
                    'If caught in a rockfall, roll into a ball to protect your head.',
                    'If near a stream or river, be aware of rising water and possible mudflows in low-lying areas. Move up-slope as quickly as possible.',
                    'Seek care for burns right away. Immediate care can be life saving.',
                    'If your eyes, nose, and throat become irritated from volcanic gases and fumes, move away from the area immediately. Your symptoms should go away when you are no longer in contact with the gases or fumes. If the symptoms continue, consult your doctor.',
                  ],
                ),
                SizedBox(height: 19.0),
                InstructionText(
                  title: 'Protecting yourself during ashfall:',
                  instructions: [
                    '- Stay inside, if possible, with windows and doors closed.',
                    '- Wear long-sleeved shirts and long pants.',
                    '- Use goggles to protect your eyes.If ash is continually falling, you may not be able to shelter indoors for more than a few hours, because the weight of the ash could collapse the roof of your building and block air intakes into the building. Listen to authorities for advice on leaving the area when ashfall lasts more than a few hours.',
                    '- Exposure to ash can harm your health, particularly the respiratory (breathing) tract. To protect yourself while you are outdoors or while you are cleaning up ash that has gotten indoors, a disposable particulate respirator (also known as an “air purifying respirator”) may be considered. An N-95 respirator is the most common type of disposable particulate respirator and can be purchased at businesses such as hardware stores. It is important to follow directions for proper use of this respirator.If you don’t have a particulate respirator, you can protect yourself by using a nuisance dust mask as a last resort, but you should stay outdoors for only short periods while dust is falling. Nuisance dust masks can provide comfort and relief from exposure to relatively non-hazardous contaminants such as pollen, but they do not offer as much protection as a particulate respirator. Cleanup or emergency workers may need a different type of breathing protection based on their work activity. Note that disposable particulate respirators do not filter toxic gases and vapors.',
                    '- Keep your car or truck engine switched off. Avoid driving in heavy ashfall. Driving will stir up ash that can clog engines and stall vehicles. If you do have to drive, keep the car windows up and do not operate the air conditioning system. Operating the air conditioning system will bring in outside air and ash.',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
