.class Lcom/yelp/android/ui/dialogs/x;
.super Ljava/lang/Object;
.source "DlgErrorScroll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/v;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/v;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/x;->a:Lcom/yelp/android/ui/dialogs/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/x;->a:Lcom/yelp/android/ui/dialogs/v;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/v;->dismiss()V

    .line 72
    return-void
.end method
