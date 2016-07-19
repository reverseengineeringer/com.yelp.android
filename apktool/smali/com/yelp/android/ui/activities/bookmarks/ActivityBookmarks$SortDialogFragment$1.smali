.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$1;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;->a(Landroid/content/DialogInterface;I)V

    .line 392
    return-void
.end method
