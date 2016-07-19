.class Lcom/yelp/android/ui/activities/talk/a$1;
.super Ljava/lang/Object;
.source "ButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/a$1;->a:Lcom/yelp/android/ui/activities/talk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/a$1;->a:Lcom/yelp/android/ui/activities/talk/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/a;->b(Lcom/yelp/android/ui/activities/talk/a;)Lcom/yelp/android/ui/activities/talk/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/a$1;->a:Lcom/yelp/android/ui/activities/talk/a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/a;->a(Lcom/yelp/android/ui/activities/talk/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/talk/a$a;->a(I)V

    .line 61
    return-void
.end method
