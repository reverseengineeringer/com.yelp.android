.class Lcom/yelp/android/ui/activities/events/d$3;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 225
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d$3;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f04ba

    if-ne v1, v2, :cond_0

    .line 230
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$3;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 233
    return-void
.end method
