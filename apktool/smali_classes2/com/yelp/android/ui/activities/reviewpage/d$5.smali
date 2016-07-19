.class Lcom/yelp/android/ui/activities/reviewpage/d$5;
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

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/d$b;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviewpage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/d$b;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->c:Lcom/yelp/android/ui/activities/reviewpage/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->a:Lcom/yelp/android/serializable/Tip;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->b:Lcom/yelp/android/ui/activities/reviewpage/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->c:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Lcom/yelp/android/ui/activities/reviewpage/d;)Lcom/yelp/android/ui/activities/reviewpage/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->a:Lcom/yelp/android/serializable/Tip;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/d$5;->b:Lcom/yelp/android/ui/activities/reviewpage/d$b;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/d$b;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/d$a;->a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V

    .line 142
    return-void
.end method
