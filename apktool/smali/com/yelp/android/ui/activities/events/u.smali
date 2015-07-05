.class Lcom/yelp/android/ui/activities/events/u;
.super Lcom/yelp/android/ag/b;
.source "EventPartyPassFragment.java"


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/u;->b:Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    invoke-direct {p0, p2}, Lcom/yelp/android/ag/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yelp/android/ag/b;->a(Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/u;->b:Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/u;->b:Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->j()V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/u;->b:Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;)V

    .line 72
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/u;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
