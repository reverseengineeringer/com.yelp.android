.class public Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchOverlay.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lcom/yelp/android/ui/activities/search/at;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/search/at;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 769
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.search_text_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>(Ljava/util/Collection;)V

    .line 770
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a:Ljava/lang/CharSequence;

    .line 771
    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b:Ljava/lang/CharSequence;

    .line 772
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->c:Lcom/yelp/android/ui/activities/search/at;

    .line 773
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 777
    const-string/jumbo v0, "extra.search_text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    .line 778
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    .line 779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->c:Lcom/yelp/android/ui/activities/search/at;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/at;->a()V

    .line 780
    return-void
.end method
