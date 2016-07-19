.class Lcom/yelp/android/ui/activities/events/c$2;
.super Ljava/lang/Object;
.source "EventRsvpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/c;
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
    .line 363
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c$2;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$2;->a:Lcom/yelp/android/ui/activities/events/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;Z)V

    .line 367
    return-void
.end method
