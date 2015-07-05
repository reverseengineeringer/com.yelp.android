.class final Lcom/yelp/android/ui/util/l;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yelp/android/ui/util/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yelp/android/ui/util/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/util/l;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/util/k;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
