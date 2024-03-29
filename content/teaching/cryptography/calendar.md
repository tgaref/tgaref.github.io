+++
title = "Α31 Κρυπτογραφία"
iscalendar = true
info = "/content/teaching/cryptography/"
calendar = "/content/teaching/cryptography/calendar"
material = "/content/teaching/cryptography/material"
assignments = "/content/teaching/cryptography/assignments"
announcements = "/content/teaching/cryptography/announcements"
+++
\newcommand{\week}[2]{
@@box
~~~ 
<h4 class="title is-4 has-text-primary-dark"><b>#1</b></h4>
~~~ 
#2
@@
}

\coursenav

@@block
@@content

### Ημερολόγιο μαθήματος

\week{Εβδομάδα 1: 14/2/2022 - 20/2/2022}{
Είδαμε κάποια ιστορικά κρυπτοσυστήματα (για παράδειγμα του Καίσαρα) και συζητήσαμε τις αδυναμίες τους.
Δώσαμε τον ορισμό του κρυπτοσυστήματος και της τέλειας ασφάλειας του Shannon. Είδαμε το one-time-pad
και αποδείξαμε ότι έχει τέλεια ασφάλεια. Το βασικό μειονέκτημα του one-time-pad είναι ότι το κλειδί
πρέπει να έχει μήκος όσο και το μήνυμα (και να μην χρησιμοποιείται περισσότερες από μία φορές).
Αποδείξαμε ότι *κάθε* κρυπτοσύστημα με τέλεια ασφάλεια έχει αυτό το μειονέκτημα.
Είδαμε την έννοια της σημασιολογικής ασφάλειας. Δώσαμε δύο ισοδύναμους ορισμούς χρησιμοποιώντας και 
στις δύο περιπτώσεις κάποιο παιχνίδι μεταξύ του Challenger και του Adversary.

**Διαβάστε:** Boneh-Shoup §2.1, 2.2, 2.3 \\
**Ασκήσεις:** [1ο φυλλάδιο](../crypto-assign-2022-1.pdf) \\
**Εργασία:** [1η εργασία](../assign-1) 
}

\week{Εβδομάδα 2: 21/2/2022 - 27/2/2022}{
Ορίσαμε την έννοια της ψευδοτυχαίας γεννήτριας αριθμών (PRG) και της ασφάλειας της.
Αποδείξαμε ότι το κρυπτοσύστημα ροής (Stream Cipher) είναι σημασιολογικά ασφαλές 
εφόσον χρησιμοποιείται μία PRG. Είδαμε ένα παράδειγμα κατασκευής μιας νέας PRG από
μία γνωστή PRG και αποδείξαμε ότι η νέα PRG είναι ασφαλής εφόσον είναι ασφαλής η
αρχική. Ορίσαμε πότε μία ψευδοτυχαία γεννήτρια είναι μη-προβλέψιμη και δείξαμε
ότι οι έννοιες της ασφάλειας και της μη-προβλεψιμότητας είναι ισοδύναμες. Κάναμε
κρυπτανάλυση της ψευδοτυχαίας γεννήτριας που στηρίζεται σε γραμμικές ισοτιμίες.
Ως εφαρμογή της ψευδοτυχαίας γεννήτριας είδαμε ένα σχήμα δέσμευσης (commitment scheme)
και πώς μπορούμε να "ρίξουμε ένα ζάρι" από απόσταση.

**Διαβάστε:** Boneh-Shoup §3.1, 3.2, 3.3, 3.4, 3.5, 3.7.1, 3.12 \\
**Εργασία:** [2η εργασία](../assign-2) 
}

\week{Εβδομάδα 3: 28/2/2022 - 6/3/2022}{
Ορίσαμε δύο νέα αντικείμενα, την ψευδοτυχαία γεννήτρια συναρτήσεων (PRF) και την
ψευδοτυχαία γεννήτρια μεταθέσεων (PRP) και την ασφάλεια τους. Είδαμε ότι μία 
ασφαλής PRP είναι ασφαλής PRF, εφόσον το πεδίο ορισμού (που είναι και πεδίο τιμών)
είναι υπερ-πολυωνυμικό (στην παράμετρο ασφαλείας). Είδαμε πώς από μια ασφαλή PRF
μπορούμε να πάρουμε μία ασφαλή PRG. Ισχύει και το αντίστροφο. Είδαμε την κατασκευή 
χωρίς την απόδειξη. Ένας τμηματικός κώδικας (block cipher) είναι μία PRP. Είδαμε
ότι η κρυπτογράφηση, με μία ασφαλή PRP, ενός μόνο block (ή περισσότερων με ECB
mode λειτουργίας, *εφόσον* τα blocks είναι διακεκριμένα) είναι σημασιολογικά ασφαλής.
Όταν το μήνυμα επιτρέπεται να περιλαμβάνει επαναλαμβανόμενα blocks, υπάρχει 
αντίπαλος που έχει πλεονέκτημα 1 στο παιχνίδι της σημασιολογικής ασφάλειας.
Είδαμε πρακτικές κατασκευές τμηματικών κωδίκων. Ειδικότερα, είδαμε τη μετάθεση 
Feistel, το DES και το AES. Είδαμε ότι ένα δίκτυο Feistel με τρεις γύρους 
είναι αρκετό για να πάρει κάποιος μία ασφαλή PRP από μία ασφαλή PRF. 

**Διαβάστε:** Boneh-Shoup §4.1, 4.2, 4.4  \\
**Ασκήσεις:** [2ο φυλλάδιο](../crypto-assign-2022-2.pdf) \\
}

\week{Εβδομάδα 4: 7/3/2022 - 13/3/2022}{
Παρατηρήσαμε ότι το παιχνίδι της σημασιολογικής ασφάλειας ορίζει την έννοια
της ασφάλειας όταν με ένα κλειδί κρυπτογραφείται ένα μόνο μήνυμα. Για να περιγράψουμε
τη χρήση ενός κλειδιού για κρυπτογράφηση πολλών μηνυμάτων διευρύνουμε το παιχνίδι και
καταλήγουμε στην έννοια της επίθεσης επιλεγμένων μηνυμάτων (Chosen Plaintext Attack - CPA)
και αντίστοιχα της ασφάλειας έναντι τέτοιων επιθέσεων. Είδαμε ότι ένα ντετερμινιστικό
κρυπτοσύστημα δεν μπορεί να είναι CPA ασφαλές. Είδαμε πώς από μία ασφαλή PRF και
ένα ασφαλή block cipher (PRP) μπορούμe να κατασκευάσουμε ένα CPA ασφαλές κρυπτοσύστημα.
Μιλήσαμε για θέσεις λειτουργίας (modes of operation) ενός block cipher και ειδικότερα 
για ECB, CBC και CTR modes. Κάναμε μία εισαγωγή στην έννοια της πιστοποίησης αυθεντικότητας
ενός μηνύματος και του Message Authentication Code (MAC). Ορίσαμε την ασφάλεια ενός
MAC - μάλιστα δώσαμε δύο ορισμούς (ο δεύτερος φαινομενικά ισχυρότερος) και δείξαμε ότι
είναι ισοδύναμοι. Είδαμε ότι μία ασφαλής PRF είναι ένα ασφαλές MAC.

**Διαβάστε:** Boneh-Shoup §5.1, 5.2, 5.3, 5.4, 6.1, 6.2, 6.3 \\
}

\week{Εβδομάδα 5: 14/3/2022 - 20/3/2022}{
Είδαμε τις κατασκευές CBC και Cascade για την κατασκευή MAC για μηνύματα μεγάλου μήκους.
Είδαμε πώς κανείς μπορεί να επιτεθεί σε αυτές τις κατασκευές: extension attacks. Αυτές 
είναι και οι μόνες δυνάτες επιθέσεις. Συζητήσαμε δύο τρόπους για να διορθώσουμε το
πρόβλημα: το τελικό tag να είναι κρυπτογραφημένο ή να χρησιμοποιήσουμε ένα αλγόριθμο
$\mathrm{pf}$ με την ιδιότητα, για διαφορετικά μηνύματα $m_0, m_1$, τα
$\mathrm{pf}(m_0), \mathrm{pf}(m_1)$ να 
μην είναι το ένα prefix του άλλου (με μεγάλη πιθανότητα, εάν ο αλγόριθμος $\mathrm{pf}$ είναι
randomized), ώστε να μην μπορεί να γίνει extension attack. Ορίσαμε την έννοια της
Universal Hash Function (UHF) και πώς μπορεί να χρησιμοποιηθεί για κατασκευή MAC. Είδαμε
κατασκευές UHF.

**Διαβάστε:** Boneh-Shoup §6.4, 6.5, 6.6, 6.7, 7.1, 7.2, 7.3 \\
}

\week{Εβδομάδα 6: 21/3/2022 - 27/3/2022}{
Το μάθημα της Τρίτης ακυρώθηκε λόγω έκτακτης υποχρέωσης του διδάσκοντα.
Το μάθημα της Παρασκευής δε θα γίνει αφού η Παρασκευή 25/3 είναι αργία.
Μπορείτε να αξιοποιήσετε το κενό μελετώντας το 3ο φυλλάδιο ασκήσεων.

**Ασκήσεις:** [3ο φυλλάδιο](../crypto-assign-2022-3.pdf) \\
**Εργασία:** [3η εργασία](../assign-3) 
}

\week{Εβδομάδα 7: 28/3/2022 - 3/4/2022}{
Μιλήσαμε για collision resistant hash functions. Είδαμε την κατασκευή
Merkle-Damgard. Είδαμε το παράδοξο των γενεθλίων και τη σχετική
επίθεση των γενεθλίων σε μία hash function.

**Διαβάστε:** Boneh-Shoup §8.1, 8.2, 8.3 \\
}

\week{Εβδομάδα 8: 4/4/2022 - 10/4/2022}{
Είδαμε το πρωτόκολλο Diffie-Hellman (DH) για δημιουργία κοινού κρυφού κλειδιού.
Ορίσαμε τα προβλήματα του διακριτού λογαρίθμου (DL), το υπολογιστικό
πρόβλημα Diffie-Hellman (DH) και το πρόβλημα απόφασης Diffie-Hellman (DDH),
τα οποία σχετίζονται με την ασφάλεια του πρωτοκόλλου DH και τη μεταξύ τους σχέση.
Κάναμε μία σύντομη επανάληψη βασικών αριθμοθεωρητικών αλγορίθμων και μιλήσαμε
για την υπολογιστική τους πολυπλοκότητα. Είδαμε τον αλγόριθμο Baby-step/Giant-step
του D. Shanks και τη διάσπαση Pohlig-Hellman για υπολογισμό διακριτών λογαρίθμων
σε μία πεπερασμένη αβελιανή ομάδα.

**Διαβάστε:** Boneh-Shoup §10.4, 10.5 \\
**Διαβάστε:** Shoup §4.1, 4.2, 4.3, 11.1, 11.2 \\
**Διαβάστε:** [Το Πρόβλημα του Διακριτού Λογαρίθμου](../note-dlp.pdf) 
}

\week{Εβδομάδα 9: 11/4/2022 - 17/4/2022}{
Μιλήσαμε για εύρεση πρώτων αριθμών. Είδαμε το τεστ του Fermat και τους
αριθμούς του Carmichael. Είδαμε το τεστ Miller-Rabin και δείξαμε 
ότι για κάθε περιττό σύνθετο $n$ τουλάχιστον τα μισά στοιχεία της $\Z_n^{\times}$
αποτελούν μάρτυρες Miller-Rabin της συνθετότητας του $n$. Ορίσαμε την 
έννοια της one-way trapdoor function (OWTF) και τις συναφείς έννοιες του ιδιωτικού
και του δημόσιου κλειδιού. Είδαμε την OWTF του ElGamal (EG). Αποδείξαμε ότι 
χρησιμοποιούμενη ως σύστημα κρυπτογράφησης, η EG είναι σημασιολογικά ασφαλής
εναντίων επιθέσεων επιλεγόμενων μηνυμάτων, αλλά *δεν* είναι σημασιολογικά
ασφαλής εναντίων επιθέσεων επιλεγόμενων κρυπτογραφημάτων.

**Διαβάστε:** Boneh-Shoup §9.4, 10.1, 10.2, 11.1, 11.2, 11.3 \\
**Ασκήσεις:** [4ο φυλλάδιο](../crypto-assign-2022-4.pdf) \\
**Εργασία:** [4a εργασία](../assign-4a), [4b εργασία](../assign-4b) \\
}

\week{Εβδομάδα 10: 2/5/2022 - 8/5/2022}{
Είδαμε την OWTF RSA. Τονίσαμε ότι *δεν* πρέπει να χρησιμοποιείται ως
σύστημα κρυπτογράφησης, αλλά για την ανταλλαγή κρυφού κλειδιού, το
οποίο χρησιμομποιούμε, για παράδειγμα με κάποιο block cipher. Είδαμε
ότι η αντιστροφή της συνάρτησης RSA ανάγεται στο πρόβλημα της
παραγοντοποίησης ακεραίων. Επίσης, δείξαμε ότι η παραγοντοποίηση
του $n = pq$ είναι ισοδύναμη με τον υπολογισμό του $\varphi(n)$,
όπως επίσης και με τον υπολογισμό δύο ακεραίων $e,d$ τέτοιων 
ώστε $ed\equiv 1 \pmod{\varphi(n)}$. Είδμαμε τη μέθοδο παραγοντοποίησης
$p-1$. Περιγράψαμε τη βασική μέθοδο παραγοντοποίησης με υποεκθετική
πολυπλοκότητα. Η μέθοδος έχει δύο φάσεις: της φάση κατασκευής σχέσεων
και τη φάση επίλυσης του γραμμικού συστήματος. Δείξαμε ότι ο αλγόριθμος
παραγοντοποιεί το $n$ σε χρόνο
$\exp\left((2 + o(1)) (\log{n} \log\log{n})^{1/2} \right)$.

**Διαβάστε:** Boneh-Shoup §10.3, 15.1, 15.3, 15.4
}

\week{Εβδομάδα 11: 9/5/2022 - 15/5/2022}{
Μιλήσαμε για ψηφιακές υπογραφές. Ορίσαμε πότε ένα σχήμα ψηφιακής υπογραφής είναι ασφαλές
εναντίων επιθέσεων επιλεγμένων μηνυμάτων. Είδαμε μία γενική μέθοδο κατασκευής σχημάτων
ψηφιακών υπογραφών από One Way Trapdoor Permutations (OWTP). Τέτοια σχήματα μπορεί να 
δείξει κανείς ότι είναι ασφαλή εφόσον η OWTP είναι ασφαλής και υποθέσουμε ότι η hash 
function που χρησιμοποιείται είναι Random Oracle. Ως συγκεκριμένο παράδειγμα, είδαμε
τις υπογραφές RSA. Είδαμε τρία συστήματα ψηφιακής υπογραφής των οποίων η ασφάλεια βασίζεται 
στο πρόβλημα του διακριτού λογαρίθμου: το σύστημα ElGamal, το Digital Sugnature Standard (DSA)
και το σύστημα Schnorr. Μιλήσαμε για ψηφιακά πιστοποιητικά και αλυσίδες πιστοποιητικών.

**Διαβάστε:** Boneh-Shoup §13.1, 13.2, 13.3 \\
**Διαβάστε:** [Υπογραφή RSA](../note-signatures-rsa.pdf), [Υπογραφή ElGamal](../note-signatures-ElGamal.pdf)
}

\week{Εβδομάδα 12: 16/5/2022 - 22/5/2022}{
Μιλήσαμε το πρόβλημα του σακιδίου (knapsack problem) και το πρόβλημα subset sum.
Αποδείξαμε ότι για μία υπεραύξουσα ακολουθία βαρών, εάν το πρόβλημα έχει λύση, τότε
αυτή είναι μοναδική και μάλιστα μπορεί να υπολογιστεί σε χρόνο γραμμικό στο πλήθος
των βαρών. Περιγράψαμε το κρυπτοσύστημα των Merkle και Hellman. Μιλήσαμε για lattices, 
το πρόβλημα εύρεσης ενός μη μηδενικού διανύματος ελάχιστης (Ευκλείδιας) νόρμας και
πώς ο αλγόριθμος LLL μπορεί να βρεί μία προσεγγιστική λύση. Είδαμε πώς από τα δεδομένα
ενός κρυπτοσυστήματος τύπου σακιδίου μπορούμε να κατασκευάσουμε ένα lattice στο οποίο
ένα διάνυσμα ασυνήθιστα μικρού μήκους έχει άμεση σχέση με το ιδιωτικό κλειδί.

**Διαβάστε:** [Κρυπτοσύστημα τύπου σακιδίου](../note-knapsack.pdf), [Lattices, LLL και η επίθεση](../note-lattices.pdf)
}

\week{Εβδομάδα 13: 23/5/2022 - 29/5/2022}{
Συζητήσαμε τις προγραμματιστικές εργασίες 1-4 και είδαμε κάποιες ενδεικτικές λύσεις.
}

@@
@@
