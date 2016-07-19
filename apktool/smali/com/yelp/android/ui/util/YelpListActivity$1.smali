.class Lcom/yelp/android/ui/util/YelpListActivity$1;
.super Ljava/lang/Object;
.source "YelpListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/YelpListActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/YelpListActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/YelpListActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/util/YelpListActivity$1;->a:Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpListActivity$1;->a:Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/YelpListActivity;->c()V

    .line 161
    return-void
.end method
