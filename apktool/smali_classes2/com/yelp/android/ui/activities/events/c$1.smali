.class Lcom/yelp/android/ui/activities/events/c$1;
.super Ljava/lang/Object;
.source "EventRsvpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/c;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c$1;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$1;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$1;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c$1;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    const v2, 0x7f070285

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c$1;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v2

    const v3, 0x7f070379

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPostedEliteLearnMore:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
