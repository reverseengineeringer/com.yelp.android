.class Lcom/yelp/android/ui/activities/events/ah;
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
    .line 332
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ah;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ah;->a:Lcom/yelp/android/ui/activities/events/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;Z)V

    .line 336
    return-void
.end method
