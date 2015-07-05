.class Lcom/yelp/android/ui/activities/events/ag;
.super Ljava/lang/Object;
.source "EventRsvpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/af;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/af;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ag;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ag;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ag;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/ag;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v2

    const v3, 0x7f070235

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/ag;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v3

    const v4, 0x7f07033f

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPostedEliteLearnMore:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
