import 'package:flutter/material.dart';
import 'package:flutter_app/models/candidate.dart';
import 'package:flutter_app/widgets/candidate_tile.dart';
import 'package:flutter_app/pages/add_candidate_page.dart';
import 'package:flutter_app/pages/strings.dart';

class CandidateListPage extends StatefulWidget {
  final List<Candidate> candidates;

  const CandidateListPage({required this.candidates});

  @override
  _CandidateListPageState createState() => _CandidateListPageState();
}

class _CandidateListPageState extends State<CandidateListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.addCandidateTitle),
      ),
      body: ListView.builder(
        itemCount: widget.candidates.length,
        itemBuilder: (context, index) {
          final candidate = widget.candidates[index];
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.grey),
            ),
            child: CandidateTile(candidate: candidate),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Candidate? newCandidate = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCandidatePage()),
          );
          if (newCandidate != null) {
            setState(() {
              widget.candidates.add(newCandidate);
            }); // Ajouter le nouveau candidat à la liste
          }
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: Strings.peopleLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.how_to_vote),
            label: Strings.votesLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: Strings.settingsLabel,
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Gérer la navigation en fonction de l'index sélectionné
        },
      ),
    );
  }
}
