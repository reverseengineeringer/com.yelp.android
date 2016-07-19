.class Lcom/yelp/android/ui/dialogs/FiltersDialog$6;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/FiltersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$6;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$6;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 951
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$6;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    .line 952
    return-void
.end method
