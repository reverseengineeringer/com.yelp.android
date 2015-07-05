.class Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/m/a;

.field final synthetic b:Landroid/support/v7/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;Lcom/yelp/android/m/a;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/g;->a:Lcom/yelp/android/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Lcom/yelp/android/m/a;

    invoke-virtual {v0}, Lcom/yelp/android/m/a;->c()V

    .line 222
    return-void
.end method
