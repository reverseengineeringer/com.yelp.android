.class Lcom/yelp/android/ui/activities/events/ao;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/al;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/al;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ao;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 209
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c03d3

    if-ne v1, v2, :cond_0

    .line 211
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ao;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 214
    return-void
.end method
