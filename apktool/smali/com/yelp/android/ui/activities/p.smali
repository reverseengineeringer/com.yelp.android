.class Lcom/yelp/android/ui/activities/p;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/yelp/android/ui/activities/p;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/p;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;)Lcom/yelp/android/ui/activities/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/ui/activities/q;->a(Landroid/content/DialogInterface;I)V

    .line 458
    return-void
.end method
