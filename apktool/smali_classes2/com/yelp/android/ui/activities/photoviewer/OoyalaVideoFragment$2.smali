.class Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;
.super Ljava/lang/Object;
.source "OoyalaVideoFragment.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "stateChanged"

    if-ne p2, v0, :cond_3

    .line 141
    check-cast p1, Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->o()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->w()V

    goto :goto_0

    .line 146
    :cond_2
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->v()V

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v0, "playCompleted"

    if-ne p2, v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->n()V

    goto :goto_0

    .line 151
    :cond_4
    const-string/jumbo v0, "error"

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method
