.class Lcom/yelp/android/ui/dialogs/w;
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
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/w;->a:Lcom/yelp/android/ui/dialogs/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/w;->a:Lcom/yelp/android/ui/dialogs/v;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/v;->a(Lcom/yelp/android/ui/dialogs/v;)V

    .line 65
    return-void
.end method
