.class Lcom/yelp/android/ui/ActivityMonocle$1;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/ActivityMonocle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/ActivityMonocle;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/ActivityMonocle$1;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$1;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->finish()V

    .line 133
    return-void
.end method
