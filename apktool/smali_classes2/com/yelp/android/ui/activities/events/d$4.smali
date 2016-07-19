.class Lcom/yelp/android/ui/activities/events/d$4;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/d;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d$4;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 245
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$4;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/d;->b(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$4;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method
