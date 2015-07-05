.class Lcom/yelp/android/ui/util/df;
.super Ljava/lang/Object;
.source "YelpListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/YelpListActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/YelpListActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yelp/android/ui/util/df;->a:Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/util/df;->a:Lcom/yelp/android/ui/util/YelpListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/YelpListActivity;->d()V

    .line 158
    return-void
.end method
