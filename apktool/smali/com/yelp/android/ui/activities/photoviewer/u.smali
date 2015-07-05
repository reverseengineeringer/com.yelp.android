.class Lcom/yelp/android/ui/activities/photoviewer/u;
.super Ljava/lang/Object;
.source "OoyalaVideoFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/u;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "stateChanged"

    if-ne p2, v0, :cond_3

    .line 136
    check-cast p1, Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/u;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->m()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/u;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->u()V

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/u;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->t()V

    goto :goto_0

    .line 144
    :cond_3
    const-string/jumbo v0, "playCompleted"

    if-ne p2, v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/u;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->l()V

    goto :goto_0

    .line 146
    :cond_4
    const-string/jumbo v0, "error"

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method
