.class Lcom/google/android/gms/internal/an$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nL:Lcom/google/android/gms/internal/an;

.field nM:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic nN:Lcom/google/android/gms/internal/ak;

.field final synthetic nO:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/ak;Landroid/webkit/WebView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/an$2;->nL:Lcom/google/android/gms/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/internal/an$2;->nN:Lcom/google/android/gms/internal/ak;

    iput-object p3, p0, Lcom/google/android/gms/internal/an$2;->nO:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/an$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/an$2$1;-><init>(Lcom/google/android/gms/internal/an$2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/an$2;->nM:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/an$2;->nO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/an$2;->nO:Landroid/webkit/WebView;

    const-string/jumbo v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/an$2;->nM:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
