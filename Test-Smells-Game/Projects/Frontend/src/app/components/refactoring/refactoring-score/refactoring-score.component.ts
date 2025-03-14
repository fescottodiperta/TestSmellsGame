import {Component, Input} from '@angular/core';
import {RefactoringGameExerciseConfiguration} from "../../../model/exercise/ExerciseConfiguration.model";
import {Exercise} from "../../../model/exercise/refactor-exercise.model";

@Component({
  selector: 'app-refactoring-score',
  templateUrl: './refactoring-score.component.html',
  styleUrls: ['./refactoring-score.component.css']
})
export class RefactoringScoreComponent {
  @Input() score: number = 0;
  @Input() smellNumber: number = 0;
  @Input() refactoringResult: string = "";
  @Input() originalCoverage: number = -1;
  @Input() refactoredCoverage: number = -1;
  @Input() smellNumberWarning: boolean = false;
  @Input() exerciseConfiguration!: RefactoringGameExerciseConfiguration;


  reset(): void {
    this.score = -1;
    this.smellNumber = 0;
    this.refactoringResult = '';
    this.originalCoverage = -1;
    this.refactoredCoverage = -1;
    this.smellNumberWarning = false;
  }
  
}
