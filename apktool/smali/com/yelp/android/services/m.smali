.class final Lcom/yelp/android/services/m;
.super Ljava/lang/Object;
.source "SharingUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yelp/android/services/n;

.field final synthetic c:Lcom/yelp/android/services/q;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/yelp/android/services/n;Lcom/yelp/android/services/q;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/services/m;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/yelp/android/services/m;->b:Lcom/yelp/android/services/n;

    iput-object p3, p0, Lcom/yelp/android/services/m;->c:Lcom/yelp/android/services/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/services/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/services/m;->b:Lcom/yelp/android/services/n;

    iget-object v2, p0, Lcom/yelp/android/services/m;->c:Lcom/yelp/android/services/q;

    invoke-static {v0, v1, p2, v2}, Lcom/yelp/android/services/l;->a(Landroid/content/Context;Lcom/yelp/android/services/n;ILcom/yelp/android/services/q;)V

    .line 90
    return-void
.end method
