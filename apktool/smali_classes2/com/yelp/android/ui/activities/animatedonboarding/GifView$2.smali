.class Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Lpl/droidsonroids/gif/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    return-void
.end method
