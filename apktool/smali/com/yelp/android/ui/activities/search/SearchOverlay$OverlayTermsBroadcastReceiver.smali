.class public Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayTermsBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 971
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.yelp.android.search_text_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>([Landroid/content/IntentFilter;)V

    .line 972
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a:Ljava/lang/CharSequence;

    .line 973
    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b:Ljava/lang/CharSequence;

    .line 974
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;

    .line 975
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 979
    const-string/jumbo v0, "extra.search_text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->e:Ljava/lang/CharSequence;

    .line 980
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->d:Ljava/lang/CharSequence;

    .line 981
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;->a()V

    .line 982
    return-void
.end method
