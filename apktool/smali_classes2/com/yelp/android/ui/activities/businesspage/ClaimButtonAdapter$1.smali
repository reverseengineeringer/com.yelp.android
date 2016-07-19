.class Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;
.super Ljava/lang/Object;
.source "ClaimButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;->a:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;->b:Z

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;->b:Z

    if-nez v0, :cond_0

    .line 137
    sget v0, Lcom/yelp/android/ui/util/av;->c:I

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;->a:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;-><init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;Landroid/view/View;Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;)V

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;->b:Z

    .line 141
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
