.class Lcom/yelp/android/ui/dialogs/af;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/af;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/af;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->dismiss()V

    .line 244
    return-void
.end method
