import { Component } from '@angular/core';
import { ServerService } from './server.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  articles:Array<any> = []

  constructor(private server: ServerService) {}

  ngOnInit() {
    this.server.getArticles().subscribe((results) => {
      this.articles = results
    })
  }
  
}
