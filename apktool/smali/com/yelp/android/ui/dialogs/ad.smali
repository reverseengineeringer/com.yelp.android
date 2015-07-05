.class Lcom/yelp/android/ui/dialogs/ad;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ad;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ad;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ad;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    .line 162
    return-void
.end method
