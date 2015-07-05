.class Lcom/yelp/android/ui/activities/talk/k;
.super Ljava/lang/Object;
.source "ButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/j;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/k;->a:Lcom/yelp/android/ui/activities/talk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/k;->a:Lcom/yelp/android/ui/activities/talk/j;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/j;->b(Lcom/yelp/android/ui/activities/talk/j;)Lcom/yelp/android/ui/activities/talk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/k;->a:Lcom/yelp/android/ui/activities/talk/j;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/j;->a(Lcom/yelp/android/ui/activities/talk/j;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/talk/l;->a(I)V

    .line 58
    return-void
.end method
