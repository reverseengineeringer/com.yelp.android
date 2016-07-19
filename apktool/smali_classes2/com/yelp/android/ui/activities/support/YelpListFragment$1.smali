.class Lcom/yelp/android/ui/activities/support/YelpListFragment$1;
.super Ljava/lang/Object;
.source "YelpListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/YelpListFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpListFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment$1;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment$1;->a:Lcom/yelp/android/ui/activities/support/YelpListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 271
    return-void
.end method
