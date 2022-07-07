{{!< default}}
{{#post}}


<main id="site-main" class="site-main outer" role="main">
  <div class="inner">
    <header class="post-full-header">
      <h1 class="post-full-title">{{title}}</h1>
    </header>

    {{#get 'authors' limit='all' include='count.posts' order='count.posts desc'}}
      <div class="post-feed" style="object-fit: contain;">
        {{#foreach authors}}
          <article class="post-card">
            {{#if profile_image}}
              <a class="post-card-image-link" href="{{url}}">
                <div class="post-card-image">
                  <img src="{{profile_image}}" alt="">
                </div>
              </a>

            {{/if}}
            <div class="post-card-content" style="background-color: aliceblue; z-index: 1;">
              <a class="post-card-content-link" href="{{url}}">
                <header class="post-card-header">
                  <h2 class="post-card-title">{{name}}</h2>
                </header>
                <section class="post-card-excerpt">
                  <p>{{bio}}</p>
                </section>
              </a>
            </div>
          </article>
        {{/foreach}}
      </div>
    {{/get}}
  </div>
</main>

{{/post}}