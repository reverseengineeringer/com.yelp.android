.class Lcom/yelp/android/ui/activities/reviewpage/d$4;
.super Ljava/lang/Object;
.source "TipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$4;->b:Lcom/yelp/android/ui/activities/reviewpage/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/d$4;->a:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d$4;->b:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Lcom/yelp/android/ui/activities/reviewpage/d;)Lcom/yelp/android/ui/activities/reviewpage/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$4;->a:Lcom/yelp/android/serializable/Tip;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/d$a;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 129
    return-void
.end method
