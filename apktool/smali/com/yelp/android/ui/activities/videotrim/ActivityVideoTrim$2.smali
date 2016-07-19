.class Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;
.super Ljava/lang/Object;
.source "ActivityVideoTrim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 181
    return-void
.end method
