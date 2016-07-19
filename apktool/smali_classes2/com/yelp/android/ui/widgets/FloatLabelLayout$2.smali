.class Lcom/yelp/android/ui/widgets/FloatLabelLayout$2;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$2;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$2;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(Lcom/yelp/android/ui/widgets/FloatLabelLayout;Z)V

    .line 203
    return-void
.end method
