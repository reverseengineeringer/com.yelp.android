.class Lcom/yelp/android/ui/activities/events/EventFragment$10;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/EventFragment;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c$e;

.field final synthetic b:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/google/android/gms/maps/c$e;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$10;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/EventFragment$10;->a:Lcom/google/android/gms/maps/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$10;->a:Lcom/google/android/gms/maps/c$e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$e;)V

    .line 566
    return-void
.end method
