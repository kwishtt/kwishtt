# 🆘 Troubleshooting Guide

## 🐍 Snake Animation Issues

### Problem: Snake không hiển thị
**Solutions:**
1. Kiểm tra GitHub Actions đã chạy thành công chưa:
   - Vào `https://github.com/kwishtt/kwishtt/actions`
   - Xem workflow "Generate Snake Animation" 

2. Kiểm tra branch `output` đã được tạo chưa:
   - Vào repository settings
   - Kiểm tra branches tab

3. Đảm bảo GITHUB_TOKEN có đủ permissions:
   - Repository settings > Actions > General
   - Workflow permissions > Read and write permissions

### Problem: Snake màu sắc không đúng
**Solution:**
- Xóa cache GitHub bằng cách thêm `?v=timestamp` vào URL
- VD: `...snake.svg?v=20250604`

### Problem: GitHub Actions không chạy
**Solutions:**
1. Kiểm tra file `.github/workflows/snake.yml` syntax
2. Manually trigger workflow từ Actions tab
3. Kiểm tra repository visibility (phải là public)

## 🎨 README Display Issues

### Problem: Badges không hiển thị
**Solution:**
- Kiểm tra URL có đúng username không
- Đảm bảo repository là public
- Thử refresh cache trình duyệt

### Problem: Images bị broken
**Solution:**
- Kiểm tra external image URLs
- Sử dụng GitHub's image hosting thay vì external links
- Đảm bảo images có public access

## 🔧 Quick Fixes

### 1. Chạy lại Snake Animation:
```bash
# Vào GitHub repository
# Actions tab > Generate Snake Animation > Run workflow
```

### 2. Update Profile nhanh:
```powershell
# Chạy script tự động
.\update-profile.ps1
```

### 3. Check commit history:
```bash
git log --oneline -5
```

### 4. Force push (nếu cần):
```bash
git push origin main --force
```

## 📞 Support Links
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Snake Game Generator](https://github.com/Platane/snk)
- [Profile README Guide](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme)

---
*🆘 Nếu vẫn gặp vấn đề, hãy kiểm tra GitHub Actions logs để debug*
